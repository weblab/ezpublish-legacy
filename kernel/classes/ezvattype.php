<?php
//
// Definition of eZVatType class
//
// Created on: <26-Nov-2002 16:00:45 wy>
//
// Copyright (C) 1999-2002 eZ systems as. All rights reserved.
//
// This source file is part of the eZ publish (tm) Open Source Content
// Management System.
//
// This file may be distributed and/or modified under the terms of the
// "GNU General Public License" version 2 as published by the Free
// Software Foundation and appearing in the file LICENSE.GPL included in
// the packaging of this file.
//
// Licencees holding valid "eZ publish professional licences" may use this
// file in accordance with the "eZ publish professional licence" Agreement
// provided with the Software.
//
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING
// THE WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE.
//
// The "eZ publish professional licence" is available at
// http://ez.no/home/licences/professional/. For pricing of this licence
// please contact us via e-mail to licence@ez.no. Further contact
// information is available at http://ez.no/home/contact/.
//
// The "GNU General Public License" (GPL) is available at
// http://www.gnu.org/copyleft/gpl.html.
//
// Contact licence@ez.no if any conditions of this licencing isn't clear to
// you.
//

/*!
  \class eZVatType ezvattype.php
  \brief eZVatType handles different VAT types
  \ingroup eZKernel

*/

include_once( "kernel/classes/ezpersistentobject.php" );

class eZVatType extends eZPersistentObject
{
    /*!
    */
    function eZVatType( $row )
    {
        $this->eZPersistentObject( $row );
    }

    function &definition()
    {
        return array( "fields" => array( "id" => "ID",
                                         "name" => "Name",
                                         "percentage" => "Percentage"
                                         ),
                      "keys" => array( "id" ),
                      "increment_key" => "id",
                      "class_name" => "eZVatType",
                      "name" => "ezvattype" );
    }

    function &fetch( $id, $asObject = true )
    {
        return eZPersistentObject::fetchObject( eZVatType::definition(),
                                                null,
                                                array( "id" => $id
                                                      ),
                                                $asObject );
    }

    function &fetchList( $asObject = true )
    {
        return eZPersistentObject::fetchObjectList( eZVatType::definition(),
                                                    null, null, null, null,
                                                    $asObject );
    }

    function &create()
    {
        $row = array(
            "id" => null,
            "name" => "",
            "percentage" => null );
        return new eZVatType( $row );
    }

    function &remove ( $id )
    {
        eZPersistentObject::removeObject( eZVatType::definition(),
                                          array( "id" => $id ) );
    }
}

?>
